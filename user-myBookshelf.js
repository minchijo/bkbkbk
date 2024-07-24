$(function() {
    // jQuery의 document ready 함수. 페이지가 완전히 로드되면 실행됩니다.

    // 읽은 책 정렬
    const readSortButtons = document.querySelectorAll('input[name="sort-read"]');
    const readList = document.getElementById('read-list');
    console.log("readList : " + readList);

    // 날짜 파싱 함수 추가
    function parseDate(dateString) {
        const [year, month, day] = dateString.split('-').map(Number);
        return new Date(year, month - 1, day);
    }

    function sortReadBooks(order) {
        console.log("Sorting books with order:", order);
        const readBooks = Array.from(readList.getElementsByClassName('book-item'));

        readBooks.sort((a, b) => {
            let valueA, valueB;
            switch (order) {
                case 'startDateRead':
                case 'endDateRead':
                    const dateSelector = order === 'startDateRead' ? '.start-date' : '.end-date';
                    valueA = parseDate(a.querySelector(dateSelector)?.textContent || '1970-01-01');
                    valueB = parseDate(b.querySelector(dateSelector)?.textContent || '1970-01-01');
                    return valueA - valueB;
                case 'highRatingRead':
                    valueA = parseFloat(a.querySelector('.book-rating')?.textContent || '0');
                    valueB = parseFloat(b.querySelector('.book-rating')?.textContent || '0');
                    return valueB - valueA;
                default:
                    return 0;
            }
        });

        // 정렬된 책들을 다시 DOM에 추가
        readList.innerHTML = '';
        readBooks.forEach(book => {
            console.log("Appending book:", book.querySelector('.book-title').textContent);
            readList.insertAdjacentHTML('beforeend', book.outerHTML);
        });
    }

    readSortButtons.forEach(button => {
        button.addEventListener('change', function() {
            console.log("Sort button clicked:", this.id);
            sortReadBooks(this.id);
        });
    });

    // 초기 정렬 (시작일순)
    sortReadBooks('startDateRead');

    // 읽고 있는 책 정렬
    const readingSortButtons = document.querySelectorAll('input[name="sort-reading"]');
    const readingList = document.getElementById('reading-list');

    function sortReadingBooks(order) {
        const readingBooks = Array.from(readingList.getElementsByClassName('book-item'));
        readingBooks.sort((a, b) => {
            let valueA, valueB;
            switch (order) {
                case 'startDateReading':
                    valueA = parseDate(a.querySelector('.start-date')?.textContent || '1970-01-01');
                    valueB = parseDate(b.querySelector('.start-date')?.textContent || '1970-01-01');
                    break;
                case 'readCountReading':
                    valueA = parseInt(a.querySelector('.read-count')?.textContent || '0');
                    valueB = parseInt(b.querySelector('.read-count')?.textContent || '0');
                    break;
                default:
                    valueA = 0;
                    valueB = 0;
            }
            return order === 'readCountReading' ? valueB - valueA : valueA - valueB;
        });
        readingList.innerHTML = '';
        readingBooks.forEach(book => {
            readingList.insertAdjacentHTML('beforeend', book.outerHTML);
        });
    }

    readingSortButtons.forEach(button => {
        button.addEventListener('change', function() {
            sortReadingBooks(this.id);
        });
    });

    // 초기 정렬 (시작일순)
    sortReadingBooks('startDateReading');

    // 읽고 싶은 책 정렬
    const wishSortButtons = document.querySelectorAll('input[name="sort-wishlist"]');
    const wishlistList = document.getElementById('wishlist-list');

    function sortWishlistBooks(order) {
        const wishlistBooks = Array.from(wishlistList.getElementsByClassName('book-item'));
        wishlistBooks.sort((a, b) => {
            let valueA, valueB;
            switch (order) {
                case 'alphabeticalWishlist':
                    valueA = a.querySelector('.book-title')?.textContent.trim() || '';
                    valueB = b.querySelector('.book-title')?.textContent.trim() || '';
                    return valueA.localeCompare(valueB);
                case 'addedDateWishlist':
                    valueA = parseDate(a.querySelector('.added-date')?.textContent || '1970-01-01');
                    valueB = parseDate(b.querySelector('.added-date')?.textContent || '1970-01-01');
                    return valueA - valueB;
                default:
                    return 0;
            }
        });
        wishlistList.innerHTML = '';
        wishlistBooks.forEach(book => {
            wishlistList.insertAdjacentHTML('beforeend', book.outerHTML);
        });
    }

    wishSortButtons.forEach(button => {
        button.addEventListener('change', function() {
            sortWishlistBooks(this.id);
        });
    });

    // 초기 정렬 (가나다순)
    sortWishlistBooks('alphabeticalWishlist');
});
