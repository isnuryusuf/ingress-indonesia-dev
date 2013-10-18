.class final Lcom/nianticproject/ingress/common/t/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/t/f;


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
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/h;->a:Lcom/nianticproject/ingress/common/t/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/h;->a:Lcom/nianticproject/ingress/common/t/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/f;->b()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/h;->a:Lcom/nianticproject/ingress/common/t/f;

    .line 30
    iget-object v1, p0, Lcom/nianticproject/ingress/common/t/h;->a:Lcom/nianticproject/ingress/common/t/f;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/t/f;->a:Lcom/nianticproject/ingress/common/t/f;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/t/h;->a:Lcom/nianticproject/ingress/common/t/f;

    goto :goto_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/t/h;->a:Lcom/nianticproject/ingress/common/t/f;

    .line 37
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/t/f;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/h;->a:Lcom/nianticproject/ingress/common/t/f;

    iput-object v0, p1, Lcom/nianticproject/ingress/common/t/f;->a:Lcom/nianticproject/ingress/common/t/f;

    .line 19
    iput-object p1, p0, Lcom/nianticproject/ingress/common/t/h;->a:Lcom/nianticproject/ingress/common/t/f;

    .line 20
    return-void
.end method
