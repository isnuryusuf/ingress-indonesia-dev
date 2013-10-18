.class public final Lcom/nianticproject/ingress/knobs/InventoryKnobs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# static fields
.field public static final a:Lcom/nianticproject/ingress/knobs/InventoryKnobs;


# instance fields
.field private final maxInventoryItems:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private useLimit:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private useMax:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/InventoryKnobs;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/knobs/InventoryKnobs;->a:Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x2710

    iput v0, p0, Lcom/nianticproject/ingress/knobs/InventoryKnobs;->maxInventoryItems:I

    .line 63
    iput-boolean v1, p0, Lcom/nianticproject/ingress/knobs/InventoryKnobs;->useMax:Z

    .line 64
    iput-boolean v1, p0, Lcom/nianticproject/ingress/knobs/InventoryKnobs;->useLimit:Z

    .line 65
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/nianticproject/ingress/knobs/InventoryKnobs;->maxInventoryItems:I

    return v0
.end method
