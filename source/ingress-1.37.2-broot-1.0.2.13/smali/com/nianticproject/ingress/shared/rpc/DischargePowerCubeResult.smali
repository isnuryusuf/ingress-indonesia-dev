.class public Lcom/nianticproject/ingress/shared/rpc/DischargePowerCubeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final xmGained:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/shared/rpc/DischargePowerCubeResult;->xmGained:I

    .line 27
    return-void
.end method
