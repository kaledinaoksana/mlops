  $ python -m pip install SomePackage            # latest version
  $ python -m pip install 'SomePackage>=1.0.4'   # with version
  $ python -m pip install --upgrade SomePackage  # upgrade package
  $ python -m pip uninstall SomePackage          # uninstall

  $ python -m pip install -r requirements.txt    # using requirements

  $ python -m pip list
  Package Version
  ------------ -------
  SomePackage  0.0.1

  $ python -m pip freeze
  SomePackage==0.0.1
