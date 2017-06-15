require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "#premium?" do
  #   assert true
  # end

  descescribe '#name' do
    course = Course.create(title: 'C1', description: 'something', cost: 120)
    course2 = Course.create(title: 'C2', description: 'something2', cost: 320)
    course3 = Course.create(title: 'Mouse', description: 'something2', cost: 320)

    assert course.name == 'My course C1'
    assert course2.name == 'My course C2'
    assert course3.name == 'My course Mouse'
    except(course3.name== 'My course Mouse')
  end



end
