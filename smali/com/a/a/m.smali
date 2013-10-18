.class final Lcom/a/a/m;
.super Lcom/a/a/p;
.source "SourceFile"


# instance fields
.field final synthetic a:F


# direct methods
.method constructor <init>(F)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput p1, p0, Lcom/a/a/m;->a:F

    invoke-direct {p0}, Lcom/a/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)F
    .locals 2
    .parameter

    .prologue
    .line 184
    sget-object v0, Lcom/a/a/d;->instance:Lcom/a/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/d;->getHeight(Ljava/lang/Object;)F

    move-result v0

    iget v1, p0, Lcom/a/a/m;->a:F

    mul-float/2addr v0, v1

    return v0
.end method
