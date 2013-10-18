.class final Lcom/google/a/a/z;
.super Lcom/google/a/a/x;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/a/x",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/a/a/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/google/a/a/z;

    invoke-direct {v0}, Lcom/google/a/a/z;-><init>()V

    sput-object v0, Lcom/google/a/a/z;->a:Lcom/google/a/a/z;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/a/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 350
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method
