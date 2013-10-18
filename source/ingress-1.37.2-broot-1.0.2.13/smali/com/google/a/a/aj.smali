.class public abstract Lcom/google/a/a/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/a/a/aj;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/a/a/aj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/google/a/a/az;

    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/a/az;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Lcom/google/a/a/aj;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/a/a/aj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p0, :cond_0

    sget-object v0, Lcom/google/a/a/a;->a:Lcom/google/a/a/a;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/a/az;

    invoke-direct {v0, p0}, Lcom/google/a/a/az;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static d()Lcom/google/a/a/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/a/aj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/google/a/a/a;->a:Lcom/google/a/a/a;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract a()Z
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
