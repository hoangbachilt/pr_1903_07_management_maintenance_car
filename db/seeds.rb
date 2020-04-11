car = Car.create!( Category_id: 12,
                    name: "Navigator L 2020",
                    description: "Bán Lincoln Navigator L Black Label 2020 màu đen, nội thất nâu đỏ, xe nhập khẩu nguyên chiếc mới 100% giao ngay toàn quốc. - - Hỗ trợ mọi thủ tục đăng ký đăng kiểm.
Lincoln Navigator L Black Label 2020 được trang bị khối động cơ V6 3.5L cho công suất tối đa 450 mã lực kết hợp hộp số tự động 10 cấp.
Phiên bản cao cấp nhất L Black Label được nhập về với một số trang bị khác biệt như ốp gỗ cao cấp, thảm sàn da lộn, hệ thống Camera 360 độ, gói công nghệ với bộ điều khiển hành trình thích ứng, hệ thống âm thanh 20 loa Stereo và hệ thống dẫn đường ...",
                    price: 5000000000)

10.times.each {|x| Car.create(Category_id: 12,
                              name: "Car #{x}",
                              description: "Xe ban chay nhat nam 2020",
                              price: 500000000 - x*50000000)}
