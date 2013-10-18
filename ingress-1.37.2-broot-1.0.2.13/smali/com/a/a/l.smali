.class final Lcom/a/a/l;
.super Lcom/a/a/p;
.source "SourceFile"


# instance fields
.field final synthetic a:F


# direct methods
.method constructor <init>(F)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput p1, p0, Lcom/a/a/l;->a:F

    invoke-direct {p0}, Lcom/a/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)F
    .locals 2
    .parameter

    .prologue
    .line 175
    sget-object v0, Lcom/a/a/d;->instance:Lcom/a/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/d;->getWidth(Ljava/lang/Object;)F

    move-result v0

    iget v1, p0, Lcom/a/a/l;->a:F

    mul-float/2addr v0, v1

    return v0
.end method
