import numpy as np
class SVM_classifier ():
  #initiating the hyperparameters
  def __init__(self,learning_rate,no_of_iterations,lambda_parameter):
    self.learning_rate = learning_rate
    self.no_of_iterations = no_of_iterations
    self.lambda_parameter = lambda_parameter

  #fitting the dataset to the SVM classifier
  def fit(self,X,Y):
    #m--> No of data points OR no of rows
    #n--> no of input features OR no of col
    self.m,self.n = X.shape

    #initiating the wt value and bias value
    self.w = np.zeros(self.n)
    self.b = 0
    self.X = X
    self.Y = Y

    #gradient descent for optimization
    for i in range(self.no_of_iterations):
      self.update_weights()

  #function for updating the weights and bias
  #SVm takes +1 or -1 values o we need to do label encoding here first
  def update_weights(self):
    #label encoding
    y_label = np.where(self.Y <= 0,-1,1)

    #gradient descent
    for index,x_i in  enumerate(self.X):
      condition = y_label[index] * (np.dot(x_i,self.w) - self.b) >=1

      if(condition):
        dw = 2*self.lambda_parameter*self.w
        db=0
      else:
        dw = 2*self.lambda_parameter * self.w - np.dot(x_i,y_label[index])
        db = y_label[index]


      self.w = self.w - self.learning_rate * dw
      self.b = self.b - self.learning_rate * db  


  #predict the label for input value
  def predict(self,X):
    output = np.dot(X,self.w) - self.b

    predicted_labels = np.sign(output)
    y_hat = np.where(predicted_labels <= -1,0,1)

    return y_hat