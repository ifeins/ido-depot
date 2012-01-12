require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received orders(:one)
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["ifeins@gmail.com"], mail.from
    assert_equal ["dave@example.org"], mail.to
    assert_match /Programming Ruby/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped orders(:one)
    assert_equal "Pragmatic Store Order Shipped", mail.subject
    assert_equal ["ifeins@gmail.com"], mail.from
    assert_equal ["dave@example.org"], mail.to
    assert_match /Programming Ruby/, mail.body.encoded
  end
end
