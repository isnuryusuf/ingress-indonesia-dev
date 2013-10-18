.class public abstract Lcom/nianticproject/ingress/common/j/ad;
.super Lcom/nianticproject/ingress/common/j/af;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/af;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/j/ad;->b:Z

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ad;->c:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/nianticproject/ingress/common/j/ae;
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/ad;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/j/ad;->b:Z

    .line 53
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/ad;->b:Z

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 53
    goto :goto_1
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/ad;->b:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ad;->c:Ljava/lang/String;

    return-object v0
.end method
