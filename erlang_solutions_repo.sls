erlang-solutions-repository:
  pkgrepo.managed:
    {% if grains['os'] == 'Debian' %}
    - humanname: Erlang Solutions Repository
    - name: "deb http://packages.erlang-solutions.com/debian jessie contrib"
    - key_url: http://packages.erlang-solutions.com/debian/erlang_solutions.asc
    - file: /etc/apt/sources.list.d/erlang_solutions.list
    {% endif %}
    {% if grains['oscodename'] == 'precise'%}
    - humanname: Erlang Solutions Repository
    - name: "deb http://packages.erlang-solutions.com/ubuntu precise contrib"
    - key_url: http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc
    - file: /etc/apt/sources.list.d/erlang_solutions.list
    {%endif%}

