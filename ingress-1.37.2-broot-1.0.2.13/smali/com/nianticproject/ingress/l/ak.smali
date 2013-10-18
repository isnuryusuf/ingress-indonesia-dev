.class public final Lcom/nianticproject/ingress/l/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/nianticproject/ingress/l/ak;

.field private static final b:Lcom/google/a/a/bb;


# instance fields
.field private final c:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, ":"

    invoke-static {v0}, Lcom/google/a/a/bb;->a(Ljava/lang/String;)Lcom/google/a/a/bb;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/l/ak;->b:Lcom/google/a/a/bb;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/nianticproject/ingress/l/ak;->c:Landroid/net/wifi/WifiManager;

    .line 39
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nianticproject/ingress/l/ak;
    .locals 2
    .parameter

    .prologue
    .line 25
    const-class v1, Lcom/nianticproject/ingress/l/ak;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/l/ak;->a:Lcom/nianticproject/ingress/l/ak;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/nianticproject/ingress/l/ak;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/l/ak;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nianticproject/ingress/l/ak;->a:Lcom/nianticproject/ingress/l/ak;

    .line 28
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/l/ak;->a:Lcom/nianticproject/ingress/l/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/u/aw;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/l/ak;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 45
    new-array v3, v6, [B

    .line 46
    sget-object v1, Lcom/nianticproject/ingress/l/ak;->b:Lcom/google/a/a/bb;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/a/a/bb;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    .line 47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 48
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 52
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v3}, Lcom/google/f/c;->a([B)Lcom/google/f/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/u/aw;->a(Lcom/google/f/c;)Lcom/nianticproject/ingress/common/u/aw;

    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method
