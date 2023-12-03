export interface CreditCard {
    id: number;
    user_id: number;
    card_number: string;
    card_holder: string;
    card_validation_date: Date;
    card_cvv: Number;
    card_member_since: Date;
    card_type: string;
}
