.class final Lcom/nianticproject/ingress/common/c/ap;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ao;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/ap;->a:Lcom/nianticproject/ingress/common/c/ao;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string/jumbo v0, "ScannerAudio"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    :try_start_0
    const-string/jumbo v0, "ScannerAudio.onLocationChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ap;->a:Lcom/nianticproject/ingress/common/c/ao;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/c/ao;->a(Lcom/nianticproject/ingress/common/c/ao;Lcom/nianticproject/ingress/common/ad;)Lcom/nianticproject/ingress/common/ad;

    .line 271
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ap;->a:Lcom/nianticproject/ingress/common/c/ao;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/c/ao;->d(Lcom/nianticproject/ingress/common/c/ao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
