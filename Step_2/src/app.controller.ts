import { Controller, Get, Param } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get('')
  getTenAnimals() {
    return this.appService.getRandomAnimals(10);
  }

  @Get(':amount')
  getSomeAnimals(@Param() params) {
    return this.appService.getRandomAnimals(params.amount);
  }
  
}
