//CAR RENTAL PROJECT WITH OOP

 class car
 {

 String model ;
 String colour;
 bool is_avilable;
 double daily_price;
 String car_number;

 car(this.model,this.colour,this.is_avilable=true,this.daily_price,this.car_number);

 // method to check if car is available to rent or not .

 String rent() {
    if (isAvailable) 
    {
     is_avilable=false; //if car is available ==> make it not available ==>able to rent.
     return "car $model with $car_number is available"; 
    }
    else
    {
     return "Car $model ($car_number) has been rented.";
  
    }
    }
    // method to return state of car  .
   String returnCar() {
    if (!isAvailable) {// if is not available"false""rented"==>make it available ==> available to rent again.
      isAvailable = true;
      return "Car $model ($car_number) has been returned 'become available'.";
    } else {
      return "Car $model ($car_number)car has not been rented .";
    }
  }
 }

 class Customer
 {
  // some information about customers.
  String name;
  String id;
  String email;
  String phone;

  Customer(this.name,this.id,this.email, this.phone);

  Map rented_car={};// store rentedcar with number of day that  has been rented.

   String rentCar(Car car, int days) {
    if (car.isAvailable) {
      rented_Car.add({"car": car, "days": days});
      car.rent();
      double totalCost = car.daily_Price * days;
      return "$name has rented ${car.model} for $days days. Total cost: $totalCost EGP.";
    } else {
      return "Sorry, ${car.model} is not available.";
    }
   }

  
 }
void main()
{



}