<?
    class Message extends AppModel{
        public $belongsTo = [
            'Sender' => [
                'className' => 'User',
                'foreignKey' => 'sender_id'
            ],
            'Recipient' => [
                'className' => 'User',
                'foreignKey' => 'recipient_id'
            ]
        ];

        public $validate = array(
            'recipient' => array(
                'rule' => 'notBlank',
                'message' => 'Please select a recipient.'
            ),
            'message' => array(
                'notEmpty' => array(
                    'rule' => 'notBlank',
                    'message' => 'Please enter a message.'
                ),
                'maxLength' => array(
                    'rule' => array('maxLength', 100),
                    'message' => 'Message cannot be longer than 100 characters.'
                )
            )
        );
        
        public function message(){
            
        }
    }
?>