<build>
    <div class="d-table table-fixed width-full Box-row--drag-hide">
      <div class="float-left pt-2 pl-3">
        <span class="tooltipped tooltipped-n" aria-label="{ statusName }">
          <svg if={ isSuccessful } class="octicon octicon-check text-green" height="16" version="1.1" viewBox="0 0 16 16" width="16">
            <path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path>
          </svg>

          <svg if={ !isSuccessful } class="octicon octicon-x text-red" height="16" version="1.1" viewBox="0 0 16 16" width="16">
            <path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path>
          </svg>
        </span>
      </div>

      <div class="float-left col-9 p-2 lh-condensed">
        <a href="{ url }" class="link-gray-dark no-underline h4">
          { build.commit.message }
        </a>

        <div class="mt-1 text-small text-gray">
          #{ build.number } { statusName } on { build.commit.branch }
          <relative-time datetime="2016-03-10T00:26:27Z" title="10 mar 2016, 01:26 CET">on 10 Mar 2016</relative-time>
        </div>
      </div>
    </div>

  <script>
    this.isSuccessful = opts.build.isSuccessful
    this.statusName = opts.build.status.name
    this.url = opts.build.url
  </script>
</build>
