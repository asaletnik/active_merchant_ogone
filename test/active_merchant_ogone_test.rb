require 'test_helper'

class ActiveMerchantOgoneTest < Test::Unit::TestCase
  include ActiveMerchant::Billing::Integrations

  def test_sha1_signature_out
    # input values and return value taken from BASIC documentation
    data = {'orderID'  => '1234',
            'currency' => 'EUR',
            'amount'   => 1500,
            'PSPID'    => 'MyPSPID',
            'operation' => 'RES' }

    signature = 'Mysecretsig1875!?'

    assert_equal 'EB52902BCC4B50DC1250E5A7C1068ECF97751256',
      Ogone.outbound_message_signature(data, signature)
  end

  def test_sha1_signature_in
    # input values and return value taken from BASIC documentation
    data = {'orderID'    => '12',
            'currency'   => 'EUR',
            'amount'     => '15',
            'PM'         => 'CreditCard',
            'ACCEPTANCE' => '1234',
            'STATUS'     => '9',
            'CARDNO'     => 'xxxxxxxxxxxx1111',
            'PAYID'      => '32100123',
            'NCERROR'    => '0',
            'BRAND'      => 'VISA'}

    signature = 'Mysecretsig1875!?'

    assert_equal 'B209960D5703DD1047F95A0F97655FFE5AC8BD52',
      Ogone.inbound_message_signature(data, signature)
  end

  def test_sha512_signature_out
    # input values and return value taken from BASIC documentation
    data = {'orderID'  => '1234',
            'currency' => 'EUR',
            'amount'   => 1500,
            'PSPID'    => 'MyPSPID',
            'operation' => 'RES' }

    signature = 'Mysecretsig1875!?'

    Ogone.sha512 = true

    assert_equal 'FBF67CED46445E7E9720C00427EF6A306D92C8FF1AC90C813E229712F897D21245BA680592B2A4DB8FF0EE32F348F79D634258C0064620D0E8604B5BFCCA76D9',
      Ogone.outbound_message_signature(data, signature)

    Ogone.sha512 = false
  end

  def test_sha512_signature_in
    # input values and return value taken from BASIC documentation
    data = {'orderID'    => '12',
            'currency'   => 'EUR',
            'amount'     => '15',
            'PM'         => 'CreditCard',
            'ACCEPTANCE' => '1234',
            'STATUS'     => '9',
            'CARDNO'     => 'xxxxxxxxxxxx1111',
            'PAYID'      => '32100123',
            'NCERROR'    => '0',
            'BRAND'      => 'VISA'}

    signature = 'Mysecretsig1875!?'

    Ogone.sha512 = true

    assert_equal '5377F95D498947BECC23E02C2C7DDE182EE1221F1A6629B091110DF653FE0C32FCACF5F9B87B4C5168FC12B7183095623750004355DE938A2B8DECC6DB6D9F62',
      Ogone.inbound_message_signature(data, signature)

    Ogone.sha512 = false
  end
end
