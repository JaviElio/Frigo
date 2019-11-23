/*
 * Frigo.c
 *
 * Created: 21/10/2019 18:16:44
 * Author : javie
 */ 

#define F_CPU 8000000UL

#include <avr/io.h>
//#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/sleep.h>
#include <avr/pgmspace.h>

// Notes
#define NOTE_C	237
#define NOTE_CS	224
#define NOTE_D	212
#define NOTE_DS	199
#define NOTE_E	188
#define NOTE_F	178
#define NOTE_FS	167
#define NOTE_G	158
#define NOTE_GS	149
#define NOTE_A	141
#define NOTE_AS	133
#define NOTE_B	125



const uint8_t Mariolength   = 13;
const uint8_t PROGMEM Marionotes[13]  = {NOTE_E,NOTE_E,0,NOTE_E,0,NOTE_C,NOTE_E,0,NOTE_G,0,0,0,NOTE_G};
const uint8_t	PROGMEM MarioOctave[13] = {     5,     5,0,     5,0,     5,     5,0,     5,0,0,0,     4};
const uint8_t PROGMEM Mariobeats[13]  = {     4,     4,4,     4,4,     4,     4,4,     4,4,4,4,     4};

int16_t count = 0;

void playTone(uint8_t tone, uint8_t octave) {

	TCCR1  = 0x90;						// clear TCNT1 on compare match
	OCR1C = tone-1;						// Set compare register
	TCCR1 |=  (11-octave);				// Set prescaler / start counter
	if (tone==0) TCCR1 = 0x90;			// Stop timer1

}


void flashLed(void) {
	PORTB |= (1 << PB3);
	_delay_ms(100);
	PORTB &= ~(1 << PB3);
	_delay_ms(100);
	PORTB |= (1 << PB3);
	_delay_ms(100);
	PORTB &= ~(1 << PB3);
	_delay_ms(100);
}



void playMario (void) {
		
	//GTCCR |= (1 << COM1B0);																		// Connect timer to PB4 and toggle on CTC
		
	for (uint8_t i=0; i<Mariolength; i++) {

		//if (pgm_read_byte_near(Marionotes + i) != 0)	showColor();							// Change led colors if note changes
		playTone(pgm_read_byte_near(Marionotes + i), pgm_read_byte_near(MarioOctave + i));		// Play note
		for(uint8_t j=0; j<pgm_read_byte_near(Mariobeats + i); j++) _delay_ms(35);				// delay to keep the note

		TCCR1 = 0x00;																			// Stops timer. No idea why 0x90 does not work here.
		_delay_ms(35);																			// Pause between notes.
	}
		
	//GTCCR &= ~( 1 << COM1B0);																	// Disconnect from PB4
	//PORTB &= ~( 1 << PB4);																		// Switch off PB4
		
}



int main(void)
{
	
	DDRB |= (1 << PB4);					// Buzzer output
	DDRB |= (1 << PB3);					// LED output
	GTCCR |= (1 << COM1B0);				// Connect timer to PB4 and toggle on CTC

	// Setup power savings
	ADCSRA = 0;						// Disable ADC
	PRR |= (1 << PRADC) | (1 << PRTIM0) | ( 1 << PRUSI) ;			// Power off ADC, USI, TIMER0
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);


	

	_delay_ms(1000);
	flashLed();
	_delay_ms(15000);
		
	
	// Aviso durante 30 segundos
	count = 6;
			
	while (count != 0)
	{
		playMario();
		_delay_ms(5000);
		count--;
	}

	// Alarma durante 5 min.
	count = 300;
	
	while (count != 0)
	{
		playTone(NOTE_F,5);
		_delay_ms(600);
		TCCR1 = 0x00;																			// Stops timer. No idea why 0x90 does not work here.

		playTone(NOTE_AS,5);
		_delay_ms(400);
		TCCR1 = 0x00;																			// Stops timer. No idea why 0x90 does not work here.

		count--;
	}			

	// Sleep
	//sei();
	sleep_mode();					// Sleep.....
	//cli();

	
    /* Replace with your application code */
    while (1) 
    {
		
		
    }
}

