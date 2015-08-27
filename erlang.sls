erlang-solutions-repository:
  pkgrepo.managed:
    {% if grains['os'] == 'Debian' %}
    - humanname: Erlang Solutions Repository
    - name: "deb http://packages.erlang-solutions.com/debian jessie contrib"
    - key_url: http://packages.erlang-solutions.com/debian/erlang_solutions.asc
    - file: /etc/apt/sources.list.d/erlang_solutions.list
    {% endif %}
    - require_in:
      - pkg: erlang

erlang:
  pkg.installed:
    - refresh: True
    - version: "1:18.0"
