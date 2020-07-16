require 'test_helper'

class JobTest < ActiveSupport::TestCase
  fixtures :jobs

  test "job attributes must not be empty" do
     job = Job.new
     assert job.invalid?
     assert job.errors[:title].any?
     assert job.errors[:description].any?
     assert job.errors[:salary].any?
  end
 
  test "salary must be positive" do
     job = Job.new(
	title: "Web Dev",
        description: "Descriptor for job")
     
     job.salary = -10.0
     assert job.invalid?
     assert_equal ["must be greater than or equal to 0.0"], job.errors[:salary]

     job.salary = 1.00
     assert job.valid?
  end
  
  def new_job(image_url)
     Job.new(
         title: "Web Dev",
         description: "General description for job",
         salary: 0.0,
         company_logo_url: image_url)
  end
  
  test "company logo is set" do
      good = %w{ d.gif d.jpg d.png d.JPG d.Jpg http://a.b.c/x/y/z/d.gif }
      bad = %w{ d.doc d.gif/more d.gif.more }
      good.each do |logo_url|
         assert new_job(logo_url).valid?, "#{logo_url} shouldn't be invalid"
      end
      bad.each do |logo_url|
	 assert new_job(logo_url).invalid?, "#{logo_url} shouldn't be valid"
      end
  end
  
  test "job is not valid without a unique title - i18n" do
      job = Job.new(
          title: jobs(:webdev).title,
          description: "yyy",
          salary: 0.00,
          company_logo_url: "pipeline.jpg")
      assert job.invalid?
      assert_equal [I18n.translate('errors.messages.taken')], job.errors[:title]
  end
end
