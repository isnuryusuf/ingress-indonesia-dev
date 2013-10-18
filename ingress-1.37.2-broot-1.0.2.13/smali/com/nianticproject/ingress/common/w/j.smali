.class public final Lcom/nianticproject/ingress/common/w/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/google/a/c/ey;

    invoke-direct {v0}, Lcom/google/a/c/ey;-><init>()V

    invoke-virtual {v0}, Lcom/google/a/c/ey;->c()Lcom/google/a/c/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ey;->f()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
