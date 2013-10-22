# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Message.destroy_all

Message.create([{subject: "alice in wonderland", message_body:"I wish I hadn't mentioned Dinah!' she said to herself in a melancholy  tone. 'Nobody seems to like her, down here, and I'm sure she's the best  cat in the world! Oh, my dear Dinah! I wonder if I shall ever see you  any more!' And here poor Alice began to cry again, for she felt very  lonely and low-spirited. In a little while, however, she again heard  a little pattering of footsteps in the distance, and she looked up  eagerly, half hoping that the Mouse had changed his mind, and was coming  back to" }])

Reply.destroy_all

Reply.create([{reply_text:"That's really cool."}, {reply_text: "Some other reply"}])