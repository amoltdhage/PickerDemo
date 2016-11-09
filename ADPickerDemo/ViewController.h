//
//  ViewController.h
//  ADPickerDemo
//
//  Created by Amol Tukaram Dhage on 09/11/16.
//  Copyright © 2016 AmolTDhage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
      <UIPickerViewDataSource,UIPickerViewDelegate>

{
    NSArray *cityNames;
}

@property (weak, nonatomic) IBOutlet UIPickerView *cityPicker;

@property (weak, nonatomic) IBOutlet UILabel *labelCity;

-(IBAction)getSelectedCity:(id)sender;


@end

