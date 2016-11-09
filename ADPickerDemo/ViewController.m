//
//  ViewController.m
//  ADPickerDemo
//
//  Created by Amol Tukaram Dhage on 09/11/16.
//  Copyright © 2016 AmolTDhage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize labelCity;




- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;

{
    return [cityNames count];
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [cityNames objectAtIndex:row];
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [labelCity setText:[NSString stringWithFormat:@"Selected City : %@",[cityNames objectAtIndex:row]]];
    
}

-(IBAction)getSelectedCity:(id)sender;
{

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    cityNames =[[NSArray alloc]initWithObjects:@"Mumbai",@"Pune",@"Nagpur",@"Amravati",@"Aurangabad",@"Jamod",@"Khamgaon",@"Akola",@"Satara",@"Jalgaon Jamod",@"Akola",@"Nashik", nil,nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
