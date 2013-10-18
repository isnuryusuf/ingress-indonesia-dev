.class public final Lcom/c/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/c/a/a/a/a;->a:F

    .line 23
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/c/a/a/a/a;->a:F

    return v0
.end method

.method public final a(F)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/c/a/a/a/a;->a:F

    .line 31
    return-void
.end method
