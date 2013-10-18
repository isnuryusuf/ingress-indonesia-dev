.class final Lcom/google/a/c/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/bs;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/a/bs",
        "<",
        "Ljava/util/Map",
        "<TC;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c/bx;->a:I

    .line 62
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/a/c/bx;->a:I

    invoke-static {v0}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
