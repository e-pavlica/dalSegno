# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Message.destroy_all

#Message.create([{subject: "alice in wonderland", message_body:"I wish I hadn't mentioned Dinah!' she said to herself in a melancholy  tone. 'Nobody seems to like her, down here, and I'm sure she's the best  cat in the world! Oh, my dear Dinah! I wonder if I shall ever see you  any more!' And here poor Alice began to cry again, for she felt very  lonely and low-spirited. In a little while, however, she again heard  a little pattering of footsteps in the distance, and she looked up  eagerly, half hoping that the Mouse had changed his mind, and was coming  back to" }])

Topic.destroy_all

Topic.create([{topic_name:"Announcements"},{topic_name:"Production"},{topic_name:"Social"}])

#User.destroy_all

#User.create([{email:"user@email.com", name:"Woody", address:"Andy's Room", city:"Emeryville", state: "CA", phone:"800-snake-in-my-boot",  salt: "$2a$10$QCviZ7Z/HfMJnN9UoZ1i0O", hashed_password: "$2a$10$QCviZ7Z/HfMJnN9UoZ1i0OrQl5F78/pBM8u1Hc9feTZ0NGyDHYzTW"}])

#create a default admin user
u = User.create({
  email:"admin@dal.segno", 
  name: "admin",  
  salt: "$2a$10$lmg/lxT3GcifIdfex5CJOO",
  hashed_password: "$2a$10$lmg/lxT3GcifIdfex5CJOOQfqjyo7MZFE16DmB1WM51Jxqm82mbd2"
  });

a = Admin.new(is_admin?:true)

u.admin = a