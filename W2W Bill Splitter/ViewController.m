//
//  ViewController.m
//  W2W Bill Splitter
//
//  Created by Colin on 2018-04-21.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UISlider *numOfPeopleSlider;
@property (weak, nonatomic) IBOutlet UILabel *splitAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *numOfPeopleLabel;
@property (nonatomic) NSInteger numOfPeople;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.numOfPeople = 2;
}
- (IBAction)numOfPeopleSliderValueChanged:(UISlider *)sender {
    self.numOfPeople = (int)sender.value;
    self.numOfPeopleLabel.text = [NSString stringWithFormat:@"# of People: %lu", self.numOfPeople];
}

- (IBAction)calculateButtonPressed:(UIButton *)sender {
    float amountPerPerson = [self.billAmountTextField.text floatValue]/self.numOfPeople;

    self.splitAmountLabel.text = [NSString stringWithFormat:@"$%0.2f", amountPerPerson];
}


@end
