module.exports = {
    userMail: async (data) => {
        let product = '';
        data.orderRequestProducts.forEach((item)=>{
            product+=`
            <tr>
                <td style="border:1px solid #000;">${item.product.name}</td>
                <td style="border:1px solid #000;">${item.product.price}</td>
            </tr>
            `
        })
        return `
        Dear ${data.name}<br />
        Greetings !!<br />
        Trust you are doing well.<br />
        Thank you visiting Ace Gifting Solutions.<br />
        Please find the attached catalogue for the shortlisted products. We look forward to being associated with you soon.<br />
        <table>
        <thead>
        <tr>
        <th style="border:1px solid #000;">Name</th>
        <th style="border:1px solid #000;">Price</th>
        </tr>
        </thead>
        <tbody>`
        +product+
        `</tbody>
        </table>
        In case of any further queries, please feel free to contact us at 8151056671 / 8095956671<br />
        Kindly let us know of a convenient time to connect and take the discussion forward.<br />
        Regards<br />
        Ace Gifting Solutions
        `;
    },
    adminMail: async (data) => {
        let product = '';
        data.orderRequestProducts.forEach((item)=>{
            product+=`
            <tr>
                <td style="border:1px solid #000;">${item.product.name}</td>
                <td style="border:1px solid #000;">${item.product.price}</td>
            </tr>
            `
        })
        return `
        Dear Admin<br />
        Greetings !!<br />
        ${data.name} has requested for the following products with the catalogue id ${data.id}.<br />
        <table>
        <thead>
        <tr>
        <th style="border:1px solid #000;">Name</th>
        <th style="border:1px solid #000;">Price</th>
        </tr>
        </thead>
        <tbody>`
        +product+
        `</tbody>
        </table>
        <br />
        Regards<br />
        Ace Gifting Solutions
        `;
    },
}