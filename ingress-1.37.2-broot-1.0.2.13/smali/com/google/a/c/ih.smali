.class public abstract Lcom/google/a/c/ih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/a/c/ih;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/a/c/ih",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    instance-of v0, p0, Lcom/google/a/c/ih;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/a/c/ih;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/a/c/au;

    invoke-direct {v0, p0}, Lcom/google/a/c/au;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static b()Lcom/google/a/c/ih;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/a/c/ih",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/google/a/c/if;->a:Lcom/google/a/c/if;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/a/c/ih;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/a/c/ih",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lcom/google/a/c/ja;

    invoke-direct {v0, p0}, Lcom/google/a/c/ja;-><init>(Lcom/google/a/c/ih;)V

    return-object v0
.end method

.method public final a(Lcom/google/a/a/aa;)Lcom/google/a/c/ih;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/a/aa",
            "<TF;+TT;>;)",
            "Lcom/google/a/c/ih",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Lcom/google/a/c/aq;

    invoke-direct {v0, p1, p0}, Lcom/google/a/c/aq;-><init>(Lcom/google/a/a/aa;Lcom/google/a/c/ih;)V

    return-object v0
.end method

.method final c()Lcom/google/a/c/ih;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:TT;>()",
            "Lcom/google/a/c/ih",
            "<",
            "Ljava/util/Map$Entry",
            "<TT2;*>;>;"
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Lcom/google/a/c/hc;->a()Lcom/google/a/a/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/c/ih;->a(Lcom/google/a/a/aa;)Lcom/google/a/c/ih;

    move-result-object v0

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
