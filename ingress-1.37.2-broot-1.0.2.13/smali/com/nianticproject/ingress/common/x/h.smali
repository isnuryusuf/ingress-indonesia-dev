.class public final Lcom/nianticproject/ingress/common/x/h;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/nianticproject/ingress/common/x/f;

.field private b:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lcom/nianticproject/ingress/common/x/f;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/x/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x/h;->a:[Lcom/nianticproject/ingress/common/x/f;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/h;->a:[Lcom/nianticproject/ingress/common/x/f;

    iget v1, p0, Lcom/nianticproject/ingress/common/x/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/h;->a:[Lcom/nianticproject/ingress/common/x/f;

    iget v1, p0, Lcom/nianticproject/ingress/common/x/h;->b:I

    iget-object v2, p0, Lcom/nianticproject/ingress/common/x/h;->a:[Lcom/nianticproject/ingress/common/x/f;

    iget v3, p0, Lcom/nianticproject/ingress/common/x/h;->b:I

    aget-object v2, v2, v3

    invoke-interface {v2, p1}, Lcom/nianticproject/ingress/common/x/f;->a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v2

    aput-object v2, v0, v1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/h;->a:[Lcom/nianticproject/ingress/common/x/f;

    iget v1, p0, Lcom/nianticproject/ingress/common/x/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 34
    iget v0, p0, Lcom/nianticproject/ingress/common/x/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/x/h;->b:I

    .line 37
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/x/h;->b:I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/x/h;->a:[Lcom/nianticproject/ingress/common/x/f;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method
