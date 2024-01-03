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
  echo XDXL VPN STORES $0; exit 1
fi; exit $res
BZh91AY&SYtr|! ��p���?������@�� � @ `Ϗ*�m  �ʟ�yCCA���4@�Bd�h2@h4h4  M44 ѣ@F�@h4h4  M44 ѣ@F�S� �4�dɓ!����1  ��M@�HC%4�OQ�ML�I��4!�� �6��H"�4d &�2��D�{Rl�����z�F�0����
�7���¼E�vQ
��ĠC�M��B�O���Vv��6{��(Ht��dvR�*�k �˴$c�-��HO��?>Kf4eY���}cn��Y��{GW�
1����� *��$�m<��#`lc?J�R�f[G2�b�%�m�:���m����,ZOw�['�" �cN<L=�7�Óz�|HJe������e`]{e�R���ћD�"3Dd;E�A7.FL�(��[�T0�!j~?+8>A	8�Ɇ�:p�}=G���i��@��z�}'�.-^O���R\�rNa�	/d�|o�|T�\{��x�uvq��ahhr_xT�����$
���º�1��T�∂ �,\ �q��P\���7]Ҽ�|ʚ0�:�4�obr���#�����,&��b ��I�ǚ�����B�!<����,�GWc���a��C%�K�}-��B`��	=�1�F�n����[�T�V#n���ʾ\��an�d���n�g��T���\�-� �e���}۪���K��v��Ǘv!��k~{�\�#�,�?��ّN���m�Q�x��/ym����P�*���A3�If,ζ��Ά]:u��%|�I<����X;��(NaN�lC�K��j�ؒk�$-��.�%��"c�	������n��W�]�{�V�n�
ٷ�d$,�ҕ��_F���Hf� +�{��V^W��f��=e�ZXA�V5�;��ak��~L��G�=���v͂m�
X�j���oX*/\��;M�!}��娽:�/�GY��
�����Ay����FA���(�.��[��)DD[z�����졀�Nz��U/@`�ap\/J�TV�$��w�������N.̀:��	D=� 5v�;[d|�ʈdr�|6��$��2ݘ8J��H��&0Ҕ��;mT;�8�	�0,�1���9�}�t�j��)��H���V�j'��N��9�>kM�q@>A��""8B��7K�[��j~͞C����Z���S*P������3�
t��R�g�"%)C8�H�%�1R����C�
�~���XP��+BT�,^X�ZȰ�����u<�����	�i�
k�(s�ǐ���8����`t)�w�P��g�@�q��(�#8C�q!$wv*�E�[8�2�B���y�0���V٥��+���zIDH"�e#�D�5t�����zHta=�E� @AiԴ�Yƹh�Ps�f��\֡�F���hb�A��]�}�]WuE(�a	�$�l�K���]b�V��n�kP���a�q���x�w	s�I8����bxH3 5,��-(��g)�y�ٮ�{
�C_jz��SxR�`/�����)L��x+*
4õE+dwF�ũMF	��7�RF��u��+�}��C�
M;]���E�fX��3o�q��6��]��BA����