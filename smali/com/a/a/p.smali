.class public abstract Lcom/a/a/p;
.super Lcom/a/a/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/c;)F
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/a/a/c;->x()Lcom/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a;->getTable()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/p;->a(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method
