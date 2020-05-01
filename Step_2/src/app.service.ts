import { Injectable } from '@nestjs/common';
import { Animal } from './animal'
let chance = require('chance').Chance()

@Injectable()
export class AppService {
  getRandomAnimals(amount: number): Array<Animal> {
    let animals = [];
    for (let i = 0; i < amount; i++) {
      animals = [
        ...animals, 
        {
          type: chance.animal(),
          name: chance.first(),
          age: chance.age(),
          country: chance.country({ full: true })
        }
      ];
    }
    return animals;
  }
}
