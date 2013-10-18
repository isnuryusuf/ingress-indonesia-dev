.class final Lcom/nianticproject/ingress/common/t/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nianticproject/ingress/common/t/e;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:F

.field final c:F

.field final d:F

.field final e:I


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/t/b;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/t/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/t/e;->a:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/t/b;->d()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/t/e;->b:F

    .line 123
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/t/b;->e()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/t/e;->c:F

    .line 124
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/t/b;->f()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/t/e;->e:I

    .line 128
    iget v0, p0, Lcom/nianticproject/ingress/common/t/e;->b:F

    iget v1, p0, Lcom/nianticproject/ingress/common/t/e;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 129
    iget v0, p0, Lcom/nianticproject/ingress/common/t/e;->c:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/t/e;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/t/e;->d:F

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/nianticproject/ingress/common/t/e;->d:F

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 114
    check-cast p1, Lcom/nianticproject/ingress/common/t/e;

    iget v0, p1, Lcom/nianticproject/ingress/common/t/e;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/t/e;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
