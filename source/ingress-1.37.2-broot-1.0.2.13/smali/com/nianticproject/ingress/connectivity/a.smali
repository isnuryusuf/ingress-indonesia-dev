.class public Lcom/nianticproject/ingress/connectivity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/w/aa;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/connectivity/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Landroid/net/ConnectivityManager;

.field private final f:Lcom/nianticproject/ingress/connectivity/ConnectivityBroadcastReceiver;

.field private final g:Landroid/content/IntentFilter;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/nianticproject/ingress/connectivity/a;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/connectivity/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    .line 78
    :try_start_0
    const-string/jumbo v0, "Connectivity.Connectivity"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/nianticproject/ingress/connectivity/a;->d:Landroid/content/Context;

    .line 81
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->e:Landroid/net/ConnectivityManager;

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/connectivity/ConnectivityBroadcastReceiver;

    invoke-direct {v0}, Lcom/nianticproject/ingress/connectivity/ConnectivityBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->f:Lcom/nianticproject/ingress/connectivity/ConnectivityBroadcastReceiver;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->g:Landroid/content/IntentFilter;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/connectivity/a;->h:Z

    .line 98
    invoke-direct {p0}, Lcom/nianticproject/ingress/connectivity/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 112
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 113
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    sget-object v5, Lcom/nianticproject/ingress/connectivity/a;->b:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/connectivity/a;->a(Z)V

    .line 120
    :goto_1
    return-void

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/connectivity/a;->a(Z)V

    goto :goto_1
.end method


# virtual methods
.method final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setConnectivity("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    iget-boolean v0, p0, Lcom/nianticproject/ingress/connectivity/a;->h:Z

    if-ne v0, p1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iput-boolean p1, p0, Lcom/nianticproject/ingress/connectivity/a;->h:Z

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/connectivity/b;

    .line 138
    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/connectivity/b;->a(Z)V

    goto :goto_1

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/connectivity/b;)Z
    .locals 3
    .parameter

    .prologue
    .line 153
    const-string/jumbo v0, "registerListener"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Listener registered, number of registered listeners: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/nianticproject/ingress/connectivity/a;->f:Lcom/nianticproject/ingress/connectivity/ConnectivityBroadcastReceiver;

    iget-object v2, p0, Lcom/nianticproject/ingress/connectivity/a;->g:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/connectivity/a;->h:Z

    return v0
.end method

.method public final b(Lcom/nianticproject/ingress/connectivity/b;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    const-string/jumbo v0, "unregisterListener"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Listener unregistered, number of registered listeners: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/connectivity/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/nianticproject/ingress/connectivity/a;->f:Lcom/nianticproject/ingress/connectivity/ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 186
    iget-object v1, p0, Lcom/nianticproject/ingress/connectivity/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Exception while trying to unregister the receiver"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
