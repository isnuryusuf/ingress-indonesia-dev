.class public Lcom/nianticproject/ingress/shared/rpc/InventoryParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lastQueryTimestamp:Ljava/lang/Long;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/InventoryParams;->lastQueryTimestamp:Ljava/lang/Long;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/InventoryParams;->lastQueryTimestamp:Ljava/lang/Long;

    .line 25
    return-void
.end method
