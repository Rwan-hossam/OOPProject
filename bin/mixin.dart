import 'client.dart';

mixin Rewards {
  double calculateRewards(CustomerType customertype) {
    double reward = 0.0;
    switch (customertype) {
      case CustomerType.VIP:
        reward = 500.0;
        break;
      case CustomerType.Rgular:
        reward = 100.0;
        break;
      case CustomerType.Premium:
        reward = 200.0;
        break;
    }
    return reward;
  }
}
