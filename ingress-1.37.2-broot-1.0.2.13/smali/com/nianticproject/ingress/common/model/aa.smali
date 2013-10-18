.class final Lcom/nianticproject/ingress/common/model/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/nianticproject/ingress/common/model/l;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/model/l;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/aa;->b:Z

    .line 66
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/aa;->a:Lcom/nianticproject/ingress/common/model/l;

    .line 67
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 80
    instance-of v0, p1, Lcom/nianticproject/ingress/common/model/aa;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/aa;->a:Lcom/nianticproject/ingress/common/model/l;

    check-cast p1, Lcom/nianticproject/ingress/common/model/aa;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/aa;->a:Lcom/nianticproject/ingress/common/model/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/aa;->a:Lcom/nianticproject/ingress/common/model/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
