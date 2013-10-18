.class final enum Lcom/google/a/c/hh;
.super Lcom/google/a/c/hg;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Lcom/google/a/c/hg;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 86
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
