package BinarySearchTree;
use v5.40;
use Moo;
package BinarySearchTree::Node {
    use Moo;
    has data => (
        is => 'ro',
    );
    has [qw<left right>] => (
        is => 'rwp',
    );
    sub add ($self, $n) {
        $self->left ? $self->left->add($n) : $self->_set_left(BinarySearchTree::Node->new(data => $n)) if $n <= $self->data;
        $self->right ? $self->right->add($n) : $self->_set_right(BinarySearchTree::Node->new(data => $n)) if $n > $self->data;
    }
    sub sort($self) {
        $self->left ? $self->left->sort() : (), $self->data, $self->right ? $self->right->sort() : ()
    }
};
has root => (
    is => 'rw',
);
sub add ($self, $n) {
    $self->root->add($n);
}
sub sort ($self) {
    [$self->root->sort()];
}
1;
