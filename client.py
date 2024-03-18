import zmq

context = zmq.Context()
s = context.socket(zmq.SUB)
p = "tcp://0.0.0.0:50056"
s.connect(p)
s.setsockopt_string(zmq.SUBSCRIBE, "TIME")

for i in range(5):
   time = s.recv()
   print(time)
