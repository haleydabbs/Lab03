#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Prototypes
void initialize();

// State Prototypes
// TODO 1.2: Add your state and state transition function prototypes here


// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        // TODO 1.0: Make the state machine here
        
               
    }
}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    // TODO 1.3: Call your goToStart function here

}

// TODO 1.1: Make your state and state transition functions
