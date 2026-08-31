command-help-usage = 用法：
command-help-invertible = 可透過使用「not」前綴來反轉此命令的行為。
command-description-tpto = 將指定的實體傳送至某個目標實體。
command-description-player-list = 回傳所有玩家連線的清單。
command-description-player-self = 返回當前的玩家會話。
command-description-player-imm = 回傳與作為參數傳入的播放器相關聯的會話。
command-description-player-entity = 回傳輸入會話的實體。
command-description-self = 回傳目前已附加的實體。
command-description-physics-velocity = 返回輸入實體的速度。
command-description-physics-angular-velocity = 回傳輸入實體的角速度。
command-description-buildinfo = 提供有關遊戲建置的相關資訊。
command-description-cmd-list = 回傳此方所有指令的清單。
command-description-explain = 說明給定的表達式，並提供指令的描述與簽名。此功能僅適用於有效的表達式，無法說明無法解析的指令。
command-description-search = 在輸入內容中搜尋所提供的值。
command-description-stopwatch = 測量指定運算式的執行時間。
command-description-types-consumers = 提供所有可處理指定類型的指令。
command-description-types-tree = 一項除錯工具，用於回傳命令解釋器可將輸入值向下轉換的所有類型。
command-description-types-gettype = 回傳輸入的資料類型。
command-description-types-fullname = 根據 CoreCLR 回傳輸入類型的完整名稱。
command-description-as =
    將輸入轉換為指定類型。
    若您已知類型但解釋器並不知曉，這實質上即為類型提示。
command-description-count = 計算其輸入中的條目數量，並傳回一個整數。
command-description-map = 將輸入映射至指定的區塊上。
command-description-select =
    從輸入中選取 N 個物件或 N% 的物件。
    此外，可透過 not 來反轉此指令，使其改為選取所有物件，僅排除 N 個物件。
command-description-comp = 從輸入實體中擷取指定的元件，並排除不包含該元件的實體。
command-description-delete = 刪除輸入的實體。
command-description-ent = 回傳所提供的實體 ID。
command-description-entities = 返回伺服器上的所有實體。
command-description-paused = 根據輸入實體是否處於暫停狀態來篩選它們。
command-description-with = 根據輸入實體是否具備指定元件，對其進行篩選。
command-description-fuck = 拋出一個例外。
command-description-ecscomp-listty = 列出所有已註冊的元件類型。
command-description-cd = 將工作階段的當前目錄變更為指定的相對或絕對路徑。
command-description-ls-here = 列出當前目錄的內容。
command-description-ls-in = 列出指定相對路徑或絕對路徑中的內容。
command-description-methods-get = 回傳所有與輸入類型相關的方法。
command-description-methods-overrides = 回傳輸入類型上所有被覆寫的方法。
command-description-methods-overridesfrom = 回傳輸入類型上所有從指定類型覆寫而來的方法。
command-description-cmd-moo = 提出關鍵問題。
command-description-cmd-descloc = 回傳某個指令說明的本地化字串。
command-description-cmd-getshim = 返回一個命令的執行介層。
command-description-help = 簡要介紹如何使用 toolshed。
command-description-ioc-registered = 回傳當前執行緒（通常為遊戲執行緒）上已向 IoCManager 註冊的所有類型
command-description-ioc-get = 取得一個 IoC 註冊項的實例。
command-description-loc-tryloc = 嘗試取得本地化字串，若無法取得則回傳 null。
command-description-loc-loc = 取得本地化字串；若無法取得，則回傳未本地化的字串。
command-description-physics-angular_velocity = 返回指定實體的角速度。
command-description-vars = 提供本工作階段中所有已設定變數的清單。
command-description-any = 若輸入中含有任何值，則回傳 true；否則回傳 false。
command-description-contains = 回傳輸入的可枚舉物件是否包含指定值。
command-description-ArrowCommand = 將輸入值賦值給一個變數。
command-description-isempty = 若輸入為空，則回傳 true；否則回傳 false。
command-description-isnull = 若輸入為 null，則返回 true；否則返回 false。
command-description-unique = 對輸入序列進行唯一性篩選，移除重複的值。
command-description-where = 給定某個輸入序列 IEnumerable<T> ，該函式會接受一個簽名 T -> bool 的區塊，用以決定每個輸入值是否應包含在輸出序列中。
command-description-do = 與 BQL 向後相容，將指定的舊指令套用至輸入序列上。
command-description-named = 根據名稱（使用正規表達式 ^selector$）篩選輸入實體。
command-description-prototyped = 根據其原型篩選輸入實體。
command-description-nearby = 建立一個新清單，列出位於指定範圍內、靠近輸入點的所有實體。
command-description-first = 回傳指定可枚舉物件的第一个項目。
command-description-splat = 將一個區塊、值或變數「拆分」，並在清單中建立 N 個該項的副本。
command-description-val = 將指定的值、區塊或變數轉換為指定的類型。這主要是一種用以因應變數現行限制的變通方法。
command-description-var = 回傳指定變數的內容。此指令會嘗試自動推斷變數的類型。若為會修改變數的複合指令，則可能需要改用「val」指令。
command-description-actor-controlled = 根據實體是否處於「積極控制」狀態來篩選實體。
command-description-actor-session = 回傳與輸入實體相關聯的會話。
command-description-physics-parent = 回傳輸入實體的父實體。
command-description-emplace =
    將指定的區塊套用至其輸入，並將輸入值存入區塊內的變數 ` $value ` 中。
    此外，還會針對實體分別輸出 ` $wx`、` $wy`、` $proto`、` $desc`、` $name` 以及 ` $paused `。
    亦可針對其他類型設定輸出值，詳細資訊請參閱該類型的文件。
command-description-AddCommand = 執行數值加法運算。
command-description-SubtractCommand = 執行數值減法運算。
command-description-MultiplyCommand = 執行數值乘法運算。
command-description-DivideCommand = 執行數值除法。
command-description-min = 回傳兩個數值中的最小值。
command-description-max = 回傳兩個數值中的最大值。
command-description-BitAndCommand = 執行位元與運算。
command-description-bitor = 執行位元級或運算。
command-description-BitXorCommand = 執行位元級異或運算。
command-description-neg = 否定該輸入。
command-description-GreaterThanCommand = 執行「大於」比較運算，即 x > y。
command-description-LessThanCommand = 執行「小於」比較運算，x < y。
command-description-GreaterThanOrEqualCommand = 執行「大於或等於」的比對，即 x >= y。
command-description-LessThanOrEqualCommand = 執行「小於或等於」的比對，即 x <= y。
command-description-EqualCommand = 執行等值比對，若輸入值相等，則返回 true。
command-description-NotEqualCommand = 執行等值比對，若輸入值不相等，則傳回 true。
command-description-append = 將一個值追加至輸入的可枚舉物件中。
command-description-DefaultIfNullCommand = 若輸入值為 null，則會將其替換為該資料型的預設值，但此功能僅適用於值型資料（不適用於物件）。
command-description-OrValueCommand = 若輸入為空，則使用所提供的替代值。
command-description-DebugPrintCommand = 以透明方式輸出指定值，用於指令執行過程中的除錯輸出。
command-description-i = 整數常數。
command-description-f = 浮點常數。
command-description-s = 字串常數。
command-description-b = 布林常數。
command-description-join = 將兩個序列合併為一個序列。
command-description-reduce =
    給定一個用作還原函式的區塊，可將一個序列轉換為單一值。
    區塊的左側內容是隱含的，而右側內容則儲存於 ` $value ` 中。
command-description-rep = 將輸入值重複 N 次，以形成一個序列。
command-description-take = 從輸入序列中擷取 N 個值
command-description-spawn-at = 在指定座標處生成一個實體。
command-description-spawn-on = 在指定實體的座標處生成一個實體。
command-description-spawn-in = 在指定的容器中，針對指定的實體生成一個實體；若該實體無法放入容器中，則會將其放置於其座標處
command-description-spawn-attached = 在相對於指定實體的 (0, 0) 位置，生成一個附著於該實體的實體。
command-description-mappos = 回傳實體相對於其當前地圖的座標。
command-description-pos = 回傳實體的座標。
command-description-tp-coords = 將指定的實體傳送至目標座標。
command-description-tp-to = 將指定的實體傳送至目標實體。
command-description-tp-into = 將指定的實體「傳送至」目標實體內部，並使其相對於目標實體在座標 (0, 0) 處附著。
command-description-comp-get = 從指定的實體中取得指定的元件。
command-description-comp-add = 將指定的元件新增至指定的實體。
command-description-comp-ensure = 確保指定的實體具備指定的元件。
command-description-comp-has = 檢查指定實體是否具有指定的元件。
command-description-AddVecCommand = 將一個標量（單一數值）加到輸入中的每個元素上。
command-description-SubVecCommand = 從輸入中的每個元素中減去一個標量（單一數值）。
command-description-MulVecCommand = 將一個標量（單一數值）與輸入中的每個元素相乘。
command-description-DivVecCommand = 將輸入中的每個元素除以一個標量（單一數值）。
command-description-rng-to = 回傳一個介於輸入值（含）與參數（不含）之間的數值。
command-description-rng-from = 回傳一個介於參數（含該值）與輸入值（不含該值）之間的數值。
command-description-rng-prob = 根據輸入的機率（範圍為 0 到 1）傳回一個布林值
command-description-sum = 計算輸入值的總和。
command-description-bin = 將輸入資料「分桶」，並統計每個唯一元素出現的次數。
command-description-extremes = 返回清單的兩端元素，並將其交錯排列。
command-description-sortby = 根據計算出的鍵，將輸入資料從最小到最大進行排序。
command-description-sortmapby = 根據計算出的鍵值，將輸入資料由小到大排序，並在排序後將原始值替換為其計算出的鍵值。
command-description-sort = 將輸入資料按由小到大的順序進行排序。
command-description-sortdownby = 根據計算出的鍵值，將輸入資料從大到小排序。
command-description-sortmapdownby = 根據計算出的鍵值，將輸入資料從大到小排序，並在排序後將各值的原始值替換為其計算出的鍵值。
command-description-sortdown = 將輸入資料依從大到小的順序進行排序。
command-description-iota = 回傳一個包含數字 1 到 N 的清單。
command-description-to = 回傳一個包含 N 至 M 個數字的清單。
command-description-curtick = 當前的遊戲幀。
command-description-curtime = 當前的遊戲時間（一個 TimeSpan 物件）
command-description-realtime = 自啟動以來的當前即時時間（一個 TimeSpan 物件）
command-description-servertime = 當前的伺服器遊戲時間；若我們是伺服器，則為零（一個 TimeSpan 物件）
command-description-replace = 將輸入實體替換為指定的原型，同時保留位置和旋轉（但其他屬性不予保留）
command-description-allcomps = 返回指定實體上的所有元件。
command-description-entitysystemupdateorder-tick = 列出實體系統的 tick 更新順序。
command-description-entitysystemupdateorder-frame = 列出實體系統的畫面更新順序。
command-description-more = 輸出 ` $more` 的內容，也就是 Toolshed 在上次指令執行時未輸出的任何額外資訊。
command-description-ModulusCommand =
    計算兩個數值的模。
    這通常是殘餘，請參閱 C# 的文件以了解此型別的詳細資訊。
command-description-ModVecCommand = 對輸入值執行模運算，並使用指定的常數作為右邊值。
command-description-BitAndNotCommand = 對輸入值執行位元與非運算。
command-description-bitornot = 對輸入值執行位元級「或非」運算。
command-description-BitXnorCommand = 對輸入資料執行位元級 XNOR 運算。
command-description-BitNotCommand = 對輸入值執行位元級非運算。
command-description-abs = 計算輸入值的絕對值（去除正負號）
command-description-average = 計算輸入值的平均值（算術平均數）。
command-description-bibytecount =
    若輸入實作 IBinaryInteger 介面，則返回該輸入的大小（以位元組為單位）。
    這並非 sizeof。
command-description-shortestbitlength = 回傳表示該輸入值所需的最小位元數。
command-description-countleadzeros = 計算輸入值中前導二進位零的個數。
command-description-counttrailingzeros = 計算輸入值中尾部的二進位零的個數。
command-description-fpi = π（3.14159...）作為浮點數。
command-description-fe = e (2.71828...) 作為浮點數。
command-description-ftau = tau (6.28318...) 作為浮點數。
command-description-fepsilon = 浮點數的 epsilon 值，確切地說是 1.4e-45。
command-description-dpi = pi（3.14159...）作為 double 型別。
command-description-de = e (2.71828...) 作為 double 型別。
command-description-dtau = tau (6.28318...) 作為 double 型別。
command-description-depsilon = 雙精度數值的 epsilon 值，確切來說是 4.9406564584124654E-324。
command-description-hpi = 將 π（3.14...）視為半個數。
command-description-he = e (2.71...) 作為二分之一。
command-description-htau = 將 tau (6.28...) 視為一半。
command-description-hepsilon = 半個單位的 ε 值，確切地說是 5.9604645E-08。
command-description-floor = 回傳輸入值的向下取整值（向零方向取整）。
command-description-ceil = 回傳輸入值的「向上取整」結果（即遠離零的方向進行四捨五入）。
command-description-round = 將輸入值進行四捨五入。
command-description-trunc = 截斷輸入值。
command-description-round2frac = 將輸入值四捨五入至指定的小數位數。
command-description-exponentbytecount = 回傳儲存指數所需的位元組數。
command-description-significandbytecount = 回傳儲存有效數位所需的位元組數。
command-description-significandbitcount = 回傳尾數的精確位元長度。
command-description-exponentshortestbitcount = 回傳儲存指數所需的最小位元數。
command-description-stepnext = 將有效數位加一並產生進位，以獲得下一個浮點數值。
command-description-stepprev = 將尾數減去 1（產生進位），並將結果存入前一個浮點數值的位元組中的步驟。
command-description-checkedto = 將輸入的數值類型轉換為目標類型；若無法轉換，則拋出錯誤。
command-description-saturateto =
    將數值從輸入數值類型轉換為目標數值類型，若值超出範圍則會進行飽和轉換。
    例如，將 382 轉換為位元組時，會飽和轉換為 255（位元組的最大值）。
command-description-truncto =
    將輸入的數值類型轉換為目標類型，並進行截斷。
    對於整數而言，這屬於帶有符號擴展的位元轉換。
command-description-iscanonical = 回傳輸入是否為標準形式的結果。
command-description-iscomplex = 回傳輸入是否為複數（依值判斷，而非依類型）
command-description-iseven =
    回傳輸入值是否為偶數。
    並非 JavaScript 套件。
command-description-isodd = 回傳輸入值是否為奇數。
command-description-isfinite = 回傳輸入是否為有限集合。
command-description-isimaginary = 回傳輸入值是否為純虛數（無實部）。
command-description-isinfinite = 回傳輸入是否為無限大。
command-description-isinteger = 回傳輸入是否為整數（以值為準，而非以類型為準）
command-description-isnan =
    回傳輸入值是否為「非數值」（NaN）。
    由於這是特殊的浮點數值，因此此處是根據值而非類型來判斷。
command-description-isnegative = 回傳輸入值是否為負數。
command-description-ispositive = 回傳輸入值是否為正數。
command-description-isreal = 回傳輸入值是否為純實數（無虛部）。
command-description-issubnormal = 回傳輸入是否為次標準形式。
command-description-iszero = 回傳輸入值是否為零。
command-description-pow = 計算其左邊項的右邊項次方。x^y。
command-description-sqrt = 計算其輸入值的平方根。
command-description-cbrt = 計算輸入值的立方根。
command-description-root = 計算輸入值的第 N 次方根。
command-description-hypot = 根據給定的邊長 A 和 B，計算三角形的斜邊長度。
command-description-sin = 計算輸入值的正弦值。
command-description-sinpi = 計算輸入值乘以π後的正弦值。
command-description-asin = 計算輸入值的反正弦值。
command-description-asinpi = 計算輸入值乘以 π 後的反正弦值。
command-description-cos = 計算輸入值的餘弦值。
command-description-cospi = 計算輸入值乘以π後的餘弦值。
command-description-acos = 計算輸入值的反正弦。
command-description-acospi = 計算輸入值乘以 π 的反正弦值。
command-description-tan = 計算輸入值的正切值。
command-description-tanpi = 計算輸入值乘以 π 後的正切值。
command-description-atan = 計算輸入值的反正切。
command-description-atanpi = 計算輸入值乘以 π 的反正切值。
command-description-iterate =
    將給定的函數對輸入進行 N 次迭代，並回傳一個結果清單。
    可以將此過程理解為將函數依序套用至某個值，並追蹤所有中間值。
command-description-pick = 從輸入中選取一個隨機值。
command-description-tee =
    將輸入傳入指定的區塊，並忽略該區塊的結果。
    這基本上讓您能在程式碼中加入分支，對單一值執行多項操作。
command-description-cmd-info =
    回傳給定指令的 CommandSpec。
    單獨使用時，這表示會輸出該指令的說明訊息。
command-description-comp-rm = 從實體中移除指定的元件。
command-description-overlay-toggle = 開啟或關閉疊加層
command-description-overlay-add = 新增一個疊加層（若尚未存在）
command-description-overlay-remove = 移除疊層
