.class final Lcom/nianticproject/ingress/common/t/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/t/f;

.field private b:Lcom/nianticproject/ingress/common/t/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(J)Lcom/nianticproject/ingress/common/t/f;
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/g;->a:Lcom/nianticproject/ingress/common/t/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/g;->a:Lcom/nianticproject/ingress/common/t/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/f;->b()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/g;->a:Lcom/nianticproject/ingress/common/t/f;

    .line 35
    iget-object v1, p0, Lcom/nianticproject/ingress/common/t/g;->a:Lcom/nianticproject/ingress/common/t/f;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/t/f;->a:Lcom/nianticproject/ingress/common/t/f;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/t/g;->a:Lcom/nianticproject/ingress/common/t/f;

    goto :goto_0
.end method

.method final a(Lcom/nianticproject/ingress/common/t/f;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/g;->a:Lcom/nianticproject/ingress/common/t/f;

    if-nez v0, :cond_0

    .line 20
    iput-object p1, p0, Lcom/nianticproject/ingress/common/t/g;->b:Lcom/nianticproject/ingress/common/t/f;

    iput-object p1, p0, Lcom/nianticproject/ingress/common/t/g;->a:Lcom/nianticproject/ingress/common/t/f;

    .line 25
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/g;->b:Lcom/nianticproject/ingress/common/t/f;

    iput-object p1, v0, Lcom/nianticproject/ingress/common/t/f;->a:Lcom/nianticproject/ingress/common/t/f;

    .line 23
    iput-object p1, p0, Lcom/nianticproject/ingress/common/t/g;->b:Lcom/nianticproject/ingress/common/t/f;

    goto :goto_0
.end method
