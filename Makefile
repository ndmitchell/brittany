.PHONY: test
test:
	echo "test"
	stack test

.PHONY: test-all
test-all:
	$(MAKE) test test-8.6.5 test-8.4.3 test-8.2.2 test-8.0.2

.PHONY: test-8.6.5
test-8.6.5:
	echo "test 8.6.5"
	stack test --stack-yaml stack-8.6.5.yaml --work-dir .stack-work-8.6.5

.PHONY: test-8.4.3
test-8.4.3:
	echo "test 8.4.3"
	stack test --stack-yaml stack-8.4.3.yaml --work-dir .stack-work-8.4.3

.PHONY: test-8.2.2
test-8.2.2:
	echo "test 8.2.2"
	stack test --stack-yaml stack-8.2.2.yaml --work-dir .stack-work-8.2.2

.PHONY: test-8.0.2
test-8.0.2:
	echo "test 8.0.2"
	stack test --stack-yaml stack-8.0.2.yaml --work-dir .stack-work-8.0.2
