.class public final Lcom/nianticproject/ingress/common/q/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:S

.field private b:S

.field private c:Z

.field private d:I

.field private e:Z

.field private f:S

.field private g:S

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/q/a/a;->c:Z

    .line 29
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/q/a/a;->e:Z

    .line 30
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/q/a/a;->c:Z

    .line 132
    iput p1, p0, Lcom/nianticproject/ingress/common/q/a/a;->d:I

    .line 133
    return-void
.end method

.method final a(SS)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-short p1, p0, Lcom/nianticproject/ingress/common/q/a/a;->a:S

    .line 127
    iput-short p2, p0, Lcom/nianticproject/ingress/common/q/a/a;->b:S

    .line 128
    return-void
.end method

.method final a(SSIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/q/a/a;->e:Z

    .line 137
    iput-short p1, p0, Lcom/nianticproject/ingress/common/q/a/a;->f:S

    .line 138
    iput-short p2, p0, Lcom/nianticproject/ingress/common/q/a/a;->g:S

    .line 139
    iput p3, p0, Lcom/nianticproject/ingress/common/q/a/a;->h:I

    .line 140
    iput p4, p0, Lcom/nianticproject/ingress/common/q/a/a;->i:I

    .line 141
    iput p5, p0, Lcom/nianticproject/ingress/common/q/a/a;->j:I

    .line 142
    return-void
.end method
