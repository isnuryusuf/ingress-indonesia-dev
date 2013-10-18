.class public final Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field button:I

.field listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

.field listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field pointer:I

.field target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 606
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 607
    return-void
.end method
