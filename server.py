import zmq, time

context = zmq.Context()
s = context.socket(zmq.PUB)
p = "tcp://0.0.0.0:50056"
s.bind(p)

while True:
   time.sleep(5)
   s.send_string("TIME " + time.asctime())
