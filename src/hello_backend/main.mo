import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  stable var currentValue: Float = 300;
  currentValue := 300;
  Debug.print(debug_show(currentValue));

  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));

  let id = 2348923840928349;
  // Debug.print(debug_show(id));

  public func topUp(amount: Float) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Float) {
    let tempValue: Float = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount too large, currentValue less than zero.")
    }
  };

  public query func checkBalance(): async Float {
    return currentValue;
  };

  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  };

  // Function to reset the bank to its initial state
  public func reset() {
    currentValue := 300;
    startTime := Time.now();
    Debug.print("Bank reset to initial state.");
  };

  // Function to transfer funds from one account to another
  public func transfer(from: Float, to: Float, amount: Float) {
    withdraw(amount);
    topUp(amount);
    Debug.print("Funds transferred from account " # Float.toText(from) # " to account " # Float.toText(to) # ".");
};


  // Function to calculate interest based on the elapsed time
  public func calculateInterest() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    let interest = currentValue * (1.01 ** Float.fromInt(timeElapsedS)) - currentValue;
    Debug.print("Interest accrued: " # Float.toText(interest));
};


}