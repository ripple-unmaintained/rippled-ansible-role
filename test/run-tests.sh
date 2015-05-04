docker run -t -i -v `pwd`:/root/test/ ansible/ubuntu14.04-ansible ansible-playbook -i /root/test/test/inventory.txt /root/test/test/test-all.yml
